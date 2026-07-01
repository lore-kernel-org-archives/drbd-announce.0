Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FE73EE1E0
	for <drbd-announce@lists.linux.dev>; Wed,  1 Jul 2026 08:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782896114; cv=none; b=Se4vFpvgRO780mgI3rjfbZl+gqYuWTCCLvHoKcaBbQNVGfwkpkMgl17+zML0PiksmgXlWtgiDtsUxjgImRSZs0TgKKqjZ7TE3OVHmw3jNJ1/EiSFJSXmmY96cEeuUBPkRL9I5m+04MWFN/26G7d07ayvQ7XrtBZJbUjytpCCcTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782896114; c=relaxed/simple;
	bh=bGtA0njNnfTui67MAfnQ5+Za1rbRucWCLBJjiOyb6F4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ehtsD/lDtongA0awMDLEpkmduYfPCxHvZEyblAqyCJDQnF1ggg1xfjaKev4inz1ttuyl54dTRUCF9WqO9Wxtp5CfmTq5hdFqsEu9oXIOO6/UzJ73KQaNkpx2zjPW/v9dJ9NRFj7lza4tm394bYgpir2f0oD+DQrhabCCOEkQovM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com; spf=pass smtp.mailfrom=linbit.com; dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b=nek8pq/N; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linbit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linbit.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linbit-com.20251104.gappssmtp.com header.i=@linbit-com.20251104.gappssmtp.com header.b="nek8pq/N"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-493a97fad2fso3488175e9.0
        for <drbd-announce@lists.linux.dev>; Wed, 01 Jul 2026 01:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linbit-com.20251104.gappssmtp.com; s=20251104; t=1782896110; x=1783500910; darn=lists.linux.dev;
        h=mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yaGqXKQ8bqapd6AY+VMaGgRhm9OOaGj9vdT+/wKEyWk=;
        b=nek8pq/NnQpTeHBdEg8D8+Bb0ePmMrXoL+pw1LbY+br3y2nOubtSDQ5O7ZwUcqNLN2
         e0gy2EpeMq1vlr0cmxzi9pYD+PNCd3kRhudtnv04qK4fXxp56xE1Z+jQCCrRt9GbNFwi
         vm44tLGqkpiGTLfR4j9JBn62xEq/tmggHjMtWCTugrSka5/Pm6Jm6vZJ7MeRaDyA3agq
         xDQBwm12spPMWwcszP9LGVwU50qKsrydHOA0BtXR/qynmAqZ4eGmH+fpAIGVuGkmTjRE
         OXj0+L6rgh4cePTcAFGhw6osb28ySG7AiZoa7X2EQUkswt67wFbc4EZ3oulbRaESQFEr
         TGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782896110; x=1783500910;
        h=mime-version:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yaGqXKQ8bqapd6AY+VMaGgRhm9OOaGj9vdT+/wKEyWk=;
        b=MBdrp+HLMomQmgUM3OztQHni6cvyQfBuS7qyMh+sCryjMWp7mWMlNYp6yUQFfGFolC
         85eBMdmlpTFhGHbtxlOYP0gY7nvuMalG6g7SvIkfzjmk8Ufl6F/KKsSZzxiaW8a6z8AS
         n2lT7KhJeu1rbwnxUBklVVoJ501jbmBljd1340a/v7UNxQT144eixgCQgu4nMVfPVCOu
         yZ1BbjMGOF/q0a8EIJkhllEG+clExqN400+KieyScgkGkHW1UXOgLYjJ+vnlxQPZobCL
         +627+zfmgIdPp3eAa46Z8gdTCj5XzJlMFmk7eEO3wQOGaa3nI2+mrMC5pfzggXGzCtQV
         SAyw==
X-Gm-Message-State: AOJu0YwE/0nmSfVX6mHLNsfgHj2nD2xR2ELdZueUvqiIy2Z6ImXeMk8l
	SfBDrHWQo39BiAFz59EsY5AxdsIBDX3TtFuUB/JZq3aYP3LkGZQFwmL+FMXLRU9qf2rcaX9y50E
	q0d9fmRQ=
X-Gm-Gg: AfdE7ckiSApoWGCmn45jOXvHaJ5gA4YBxCpHlx2xV970eA4Oh42XuifuRddjUAj8OpI
	ME4IMiIKGX5nq51kMpLZL8BvhEs754v4XfT2jJ9wWlCgxrHEvjpCHNLPeAxN82cSLL4cNoo4AAf
	p7jJBeJR2m/0rKiTDa+jzrmx11CMpo4tYdqHMc0qXQJJF6c6qzZB+uQ3XhKWvs48yIzCytpWV/X
	SdjOfud2adOjhet+NrI53xMy2jWp0tGEbRsBADkL9/HSTz4EZ71zcQ4nMLN646EjvzAKzs+D1A2
	fp0ZR9MGmVLzdtfOj7/fg/vPOxJJW06RGObW4f4gaKf0KUUorxYNwP/GKOHTvz3nflAP4/NCQu0
	9x66lawBKOTBprihMYO8i57/0uxEuEFsoUrrFdZiqoc0+ivmF5w1qUhYELmHwjo3HXo8VbmQE+z
	EE6TGFkWkzt/QnzP65k5yiIcV/9N5kmf8MC7GP1NbYLmI1RjE13gRH/1ukOP5y
X-Received: by 2002:a05:600c:4349:b0:493:b4cf:d37f with SMTP id 5b1f17b1804b1-493c2b56f7dmr6703415e9.16.1782896110344;
        Wed, 01 Jul 2026 01:55:10 -0700 (PDT)
Received: from ryzen9 (192-164-131-220.hdsl.highway.telekom.at. [192.164.131.220])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493be4d2bc5sm62632975e9.5.2026.07.01.01.55.09
        for <drbd-announce@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 01:55:09 -0700 (PDT)
From: Philipp Reisner <philipp.reisner@linbit.com>
To: drbd-announce@lists.linux.dev
Subject: drbd-9.3.3 and drbd-9.2.19
Date: Wed, 01 Jul 2026 10:55:08 +0200
Message-ID: <86qzln84yb.fsf@linbit.com>
Precedence: bulk
X-Mailing-List: drbd-announce@lists.linux.dev
List-Id: <drbd-announce.lists.linux.dev>
List-Subscribe: <mailto:drbd-announce+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:drbd-announce+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain


Dear DRBD-users,

With the upcoming release, we are fixing a surprisingly large number of
bugs across the board. All of the issues are related to unusual
timings. An example is the resize that could lock up when a write on a
remote peer switched an activity log extent on the resizing machine at
the "wrong time".

The other large fix is for the scenario where a diskless primary is
isolated from all storage servers at once, and the storage servers are
isolated from each other at the same time. E.g., a network switch
failure.

During the RC phase, another round of subtle corner case fixes came
in. After I merged those, we had increased failure frequencies for some
tests in the nightly stability runs. Analyzing these issues to the root
causes and applying fixes for those problems delayed the release by 2
days.

I recommend upgrading to this release.

9.3.3 (api:genl2/proto:86-101,118-124/transport:21)
--------
 * Support adding and removing paths on established lb-tcp connections
 * Fix a page-reference leak on TLS connections by copying instead of
   referencing pages when sending
 * Reject paths that would make incoming connections ambiguous
 * All fixes from 9.2.19
  - Fix silent data divergence when a diskless primary creates a new
    current UUID that a peer never received (e.g. switch failure);
    the optimistic UUID is now confirmed via the data stream before
    being relied upon
  - Fix silent data corruption when a diskless primary suppressed its
    current-UUID bump because a peer had been resynced by a third node
  - Fix a false split-brain ("Unrelated data, aborting!") caused by
    pushing a peer's bitmap UUIDs into the local history
  - Hold a primary-loss survivor at Consistent until it reconciles with
    the surviving peers, so a stale node cannot promote and serve
    un-reconciled data
  - Reconcile two peers holding the same current UUID but still carrying
    out-of-sync bits toward each other, instead of silently dropping the
    divergence
  - Fix a list corruption crash when freeing a peer_req that was
    still linked on the send_oos list
  - Fix an AB-BA deadlock between online resize and activity-log
    transactions
  - Fix a use-after-free of the TCP listener during connection setup
  - Fix a list corruption crash and assertion failures when a peer
    disconnects while online-verify requests are still in flight
  - Fix several races during connection teardown that could crash or
    hang (ack_sender requeue, pending ping work, in-progress lb-tcp
    connect)
  - Abort a two-phase-commit on peers when the target connection fails
    to prepare
  - Added max_parallel_resyncs module parameter to cap how many
    volumes may resync (or verify) in parallel
  - Fix multiple RDMA transport bugs hit during racing teardown: a
    NULL pointer dereference, a self-deadlock, and a cm object leak
  - Fix bogus resync speed/ETA reported in /proc/drbd when the
    out-of-sync amount grows
  - Do not throttle a resync that is losing ground to ongoing writes


https://pkg.linbit.com//downloads/drbd/9/drbd-9.3.3.tar.gz
https://github.com/LINBIT/drbd/commit/97da76040a6b31aaf9e12f1a167e77ca2b3cb43e

https://pkg.linbit.com//downloads/drbd/9/drbd-9.2.19.tar.gz
https://github.com/LINBIT/drbd/commit/302e1eaf1b8fd10e2250d106dae97102d99836d2

cheers,
 Philipp
