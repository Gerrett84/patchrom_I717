.class public Lcom/android/internal/telephony/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0x0

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VS_RX:I = 0x2

.field public static final CALL_TYPE_VS_TX:I = 0x1

.field public static final CALL_TYPE_VT:I = 0x3


# instance fields
.field public call_domain:I

.field public call_type:I

.field public extras:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1
    .parameter "callType"
    .parameter "callDomain"
    .parameter "extraparams"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 96
    iput p2, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallDetails;)V
    .locals 1
    .parameter "srcCall"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    .line 103
    iget v0, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    iput v0, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    .line 104
    iget-object v0, p1, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public setExtras([Ljava/lang/String;)V
    .locals 0
    .parameter "extraparams"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
