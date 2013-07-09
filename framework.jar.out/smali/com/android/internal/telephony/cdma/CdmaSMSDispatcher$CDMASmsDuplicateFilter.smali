.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;
.super Ljava/lang/Object;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CDMASmsDuplicateFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;
    }
.end annotation


# instance fields
.field private final FILTER_SIZE:I

.field mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1494
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->FILTER_SIZE:I

    .line 1512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    .line 1513
    return-void
.end method


# virtual methods
.method public addMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1519
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTeleserviceId()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1520
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;-><init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_1
    return-void
.end method

.method public isDuplicated(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 12
    .parameter "src"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1527
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 1528
    const/4 v0, 0x0

    .local v0, addrMatched:Z
    const/4 v1, 0x0

    .local v1, bodyMatched:Z
    const/4 v5, 0x0

    .local v5, timeMatched:Z
    const/4 v4, 0x0

    .line 1529
    .local v4, msgIdMatched:Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;

    .line 1531
    .local v3, msg:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;
    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1532
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    move v0, v6

    .line 1537
    :goto_1
    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    move v5, v6

    .line 1538
    :goto_2
    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)I

    move-result v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v9

    if-ne v8, v9, :cond_3

    move v4, v6

    .line 1540
    :goto_3
    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1541
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    move v1, v6

    .line 1545
    :goto_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 1549
    .end local v0           #addrMatched:Z
    .end local v1           #bodyMatched:Z
    .end local v3           #msg:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;
    .end local v4           #msgIdMatched:Z
    .end local v5           #timeMatched:Z
    :goto_5
    return v6

    .restart local v0       #addrMatched:Z
    .restart local v1       #bodyMatched:Z
    .restart local v3       #msg:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;
    .restart local v4       #msgIdMatched:Z
    .restart local v5       #timeMatched:Z
    :cond_0
    move v0, v7

    .line 1532
    goto :goto_1

    .line 1534
    :cond_1
    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v5, v7

    .line 1537
    goto :goto_2

    :cond_3
    move v4, v7

    .line 1538
    goto :goto_3

    :cond_4
    move v1, v7

    .line 1541
    goto :goto_4

    .line 1543
    :cond_5
    #getter for: Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 1527
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #addrMatched:Z
    .end local v1           #bodyMatched:Z
    .end local v3           #msg:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;
    .end local v4           #msgIdMatched:Z
    .end local v5           #timeMatched:Z
    :cond_7
    move v6, v7

    .line 1549
    goto :goto_5
.end method
