.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;
.super Ljava/lang/Object;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsFilterRecord"
.end annotation


# instance fields
.field private msgBody:Ljava/lang/String;

.field private msgId:I

.field private originAddress:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;

.field private timeStamp:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msgid"
    .parameter "time"
    .parameter "address"
    .parameter "mBody"

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->this$1:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1503
    iput p2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I

    .line 1504
    iput-wide p3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J

    .line 1505
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;

    .line 1506
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;

    .line 1507
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->originAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1496
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->timeStamp:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1496
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->msgId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$CDMASmsDuplicateFilter$SmsFilterRecord;->msgBody:Ljava/lang/String;

    return-object v0
.end method
