.class public abstract Lcom/android/internal/telephony/IntRangeManager;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IntRangeManager$ClientRange;,
        Lcom/android/internal/telephony/IntRangeManager$IntRange;
    }
.end annotation


# static fields
.field private static final INITIAL_CLIENTS_ARRAY_SIZE:I = 0x4


# instance fields
.field private mRanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$IntRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    .line 180
    return-void
.end method

.method private populateAllClientRanges()V
    .locals 9

    .prologue
    .line 632
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 633
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 634
    iget-object v6, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 636
    .local v5, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 637
    .local v0, clientLen:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 638
    iget-object v6, v5, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 639
    .local v4, nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v6, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    iget v7, v4, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 633
    .end local v4           #nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v0           #clientLen:I
    .end local v2           #j:I
    .end local v5           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1
    return-void
.end method

.method private populateAllRanges()V
    .locals 5

    .prologue
    .line 619
    iget-object v2, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 621
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 623
    .local v0, currRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v2, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    iget v3, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    goto :goto_0

    .line 625
    .end local v0           #currRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRange(IIZ)V
.end method

.method public declared-synchronized disableRange(IILjava/lang/String;)Z
    .locals 19
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 438
    .local v9, len:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_12

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 440
    .local v14, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 441
    const/16 v17, 0x0

    .line 574
    .end local v14           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_1
    monitor-exit p0

    return v17

    .line 442
    .restart local v14       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_0
    :try_start_1
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_11

    .line 445
    iget-object v2, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 448
    .local v2, clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 449
    .local v5, crLength:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_3

    .line 450
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 451
    .local v3, cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 456
    const/16 v17, 0x1

    goto :goto_1

    .line 459
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 460
    const/16 v17, 0x0

    goto :goto_1

    .line 463
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 473
    .end local v3           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_3
    const/high16 v8, -0x8000

    .line 474
    .local v8, largestEndId:I
    const/16 v16, 0x0

    .line 477
    .local v16, updateStarted:Z
    const/4 v4, 0x0

    .local v4, crIndex:I
    :goto_2
    if-ge v4, v5, :cond_11

    .line 478
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 479
    .restart local v3       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_f

    iget-object v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->client:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 481
    add-int/lit8 v17, v5, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    .line 482
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v8, :cond_4

    .line 485
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 486
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 489
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 490
    iput v8, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 492
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 494
    :cond_5
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 495
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 496
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 504
    :cond_6
    new-instance v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V

    .line 506
    .local v15, rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    if-nez v4, :cond_8

    .line 512
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    .line 513
    .local v13, nextStartId:I
    iget v0, v14, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_7

    .line 514
    const/16 v16, 0x1

    .line 515
    iput v13, v15, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 518
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 525
    .end local v13           #nextStartId:I
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v10, newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    move-object v6, v15

    .line 528
    .local v6, currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v12, v4, 0x1

    .local v12, nextIndex:I
    :goto_3
    if-ge v12, v5, :cond_c

    .line 529
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 530
    .local v11, nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 531
    const/16 v16, 0x1

    .line 532
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 533
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .end local v6           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 541
    .restart local v6       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :goto_4
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_9

    .line 542
    iget v8, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    .line 528
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 536
    :cond_a
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 537
    iget v0, v11, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 539
    :cond_b
    iget-object v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 436
    .end local v2           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4           #crIndex:I
    .end local v5           #crLength:I
    .end local v6           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v7           #i:I
    .end local v8           #largestEndId:I
    .end local v9           #len:I
    .end local v10           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v11           #nextCr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v12           #nextIndex:I
    .end local v14           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v15           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v16           #updateStarted:Z
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 547
    .restart local v2       #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .restart local v3       #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .restart local v4       #crIndex:I
    .restart local v5       #crLength:I
    .restart local v6       #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v7       #i:I
    .restart local v8       #largestEndId:I
    .restart local v9       #len:I
    .restart local v10       #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .restart local v12       #nextIndex:I
    .restart local v14       #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v15       #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .restart local v16       #updateStarted:Z
    :cond_c
    move/from16 v0, p2

    if-ge v8, v0, :cond_d

    .line 548
    const/16 v16, 0x1

    .line 549
    :try_start_2
    iput v8, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 551
    :cond_d
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 556
    if-eqz v16, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IntRangeManager;->updateRanges()Z

    move-result v17

    if-nez v17, :cond_e

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 560
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 563
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 566
    .end local v6           #currentRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v10           #newRanges:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$IntRange;>;"
    .end local v12           #nextIndex:I
    .end local v15           #rangeCopy:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_f
    iget v0, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v8, :cond_10

    .line 567
    iget v8, v3, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 438
    .end local v2           #clients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IntRangeManager$ClientRange;>;"
    .end local v3           #cr:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    .end local v4           #crIndex:I
    .end local v5           #crLength:I
    .end local v8           #largestEndId:I
    .end local v16           #updateStarted:Z
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 574
    .end local v14           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method public declared-synchronized enableRange(IILjava/lang/String;)Z
    .locals 20
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 196
    .local v10, len:I
    if-nez v10, :cond_1

    .line 197
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const/16 v17, 0x1

    .line 421
    :goto_0
    monitor-exit p0

    return v17

    .line 201
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 205
    :cond_1
    const/4 v14, 0x0

    .local v14, startIndex:I
    :goto_1
    if-ge v14, v10, :cond_21

    .line 206
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 207
    .local v13, range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 211
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 212
    const/16 v17, 0x1

    goto :goto_0

    .line 213
    :cond_2
    add-int/lit8 v17, p1, -0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 216
    move/from16 v11, p2

    .line 217
    .local v11, newRangeEndId:I
    const/4 v12, 0x0

    .line 218
    .local v12, nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    if-ge v0, v10, :cond_3

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int/lit8 v18, v14, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    check-cast v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 220
    .restart local v12       #nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, p2

    if-gt v0, v1, :cond_6

    .line 222
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 224
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 231
    :cond_3
    :goto_2
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 232
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 233
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 236
    if-eqz v12, :cond_5

    .line 237
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 239
    iget v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 241
    :cond_4
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v12, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 228
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 246
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 248
    .end local v11           #newRangeEndId:I
    .end local v12           #nextRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_16

    .line 252
    add-int/lit8 v17, p2, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 255
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 257
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 259
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 261
    :cond_a
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 264
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 265
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 266
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 267
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 269
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 273
    :cond_c
    add-int/lit8 v5, v14, 0x1

    .local v5, endIndex:I
    :goto_3
    if-ge v5, v10, :cond_13

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 275
    .local v6, endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_f

    .line 278
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 279
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 280
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 282
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 288
    add-int/lit8 v8, v14, 0x1

    .line 289
    .local v8, joinIndex:I
    move v7, v8

    .local v7, i:I
    :goto_4
    if-ge v7, v5, :cond_d

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 292
    .local v9, joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 295
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 297
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 299
    :cond_f
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_12

    .line 303
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 304
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 305
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 307
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    add-int/lit8 v8, v14, 0x1

    .line 314
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_5
    if-gt v7, v5, :cond_10

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 316
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 319
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_10
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 321
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 273
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 328
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_13
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 329
    move/from16 v0, p1

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 330
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 332
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct/range {v19 .. v23}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 338
    add-int/lit8 v8, v14, 0x1

    .line 339
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_6
    if-ge v7, v10, :cond_14

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 342
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 345
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 347
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 350
    .end local v5           #endIndex:I
    :cond_16
    add-int/lit8 v17, p1, 0x1

    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_20

    .line 352
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_17

    .line 355
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 356
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 360
    :cond_17
    move v5, v14

    .line 361
    .restart local v5       #endIndex:I
    add-int/lit8 v15, v14, 0x1

    .local v15, testIndex:I
    :goto_7
    if-ge v15, v10, :cond_18

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 363
    .local v16, testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    .line 370
    .end local v16           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_18
    if-ne v5, v14, :cond_1b

    .line 374
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 375
    move/from16 v0, p2

    iput v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 376
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 377
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 366
    .restart local v16       #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_19
    move v5, v15

    .line 361
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 379
    .end local v16           #testRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 383
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 388
    .restart local v6       #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    .line 391
    .restart local v11       #newRangeEndId:I
    :goto_8
    iget v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 392
    iget v0, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-gt v0, v1, :cond_1d

    iget v11, v6, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 393
    :goto_9
    iput v11, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 395
    new-instance v17, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/IntRangeManager$IntRange;->insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V

    .line 401
    add-int/lit8 v8, v14, 0x1

    .line 402
    .restart local v8       #joinIndex:I
    move v7, v8

    .restart local v7       #i:I
    :goto_a
    if-gt v7, v5, :cond_1e

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    .line 404
    .restart local v9       #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    iget-object v0, v13, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    iget-object v0, v9, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .end local v7           #i:I
    .end local v8           #joinIndex:I
    .end local v9           #joinRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    :cond_1c
    move/from16 v11, p2

    .line 388
    goto :goto_8

    .restart local v11       #newRangeEndId:I
    :cond_1d
    move/from16 v11, p2

    .line 392
    goto :goto_9

    .line 407
    .restart local v7       #i:I
    .restart local v8       #joinIndex:I
    :cond_1e
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 409
    .end local v7           #i:I
    .end local v8           #joinIndex:I
    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 205
    .end local v5           #endIndex:I
    .end local v6           #endRange:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    .end local v11           #newRangeEndId:I
    .end local v15           #testIndex:I
    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 417
    .end local v13           #range:Lcom/android/internal/telephony/IntRangeManager$IntRange;
    :cond_21
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IntRangeManager;->tryAddRanges(IIZ)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/internal/telephony/IntRangeManager$IntRange;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IntRangeManager$IntRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 421
    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 193
    .end local v10           #len:I
    .end local v14           #startIndex:I
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17
.end method

.method protected abstract finishUpdate()Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager;->mRanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected abstract startUpdate()V
.end method

.method protected tryAddRanges(IIZ)Z
    .locals 1
    .parameter "startId"
    .parameter "endId"
    .parameter "selected"

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 600
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 602
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/IntRangeManager;->addRange(IIZ)V

    .line 603
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method

.method public updateRanges()Z
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->startUpdate()V

    .line 586
    invoke-direct {p0}, Lcom/android/internal/telephony/IntRangeManager;->populateAllRanges()V

    .line 587
    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->finishUpdate()Z

    move-result v0

    return v0
.end method
