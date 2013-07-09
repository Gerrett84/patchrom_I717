.class Landroid/telephony/SmsMessage$PduFormatChecker;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduFormatChecker"
.end annotation


# static fields
.field private static file:Ljava/io/File;

.field private static fileInputStream:Ljava/io/FileInputStream;

.field private static fileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1636
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/fmt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    .line 1638
    sput-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    .line 1639
    sput-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1635
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1635
    invoke-static {p0}, Landroid/telephony/SmsMessage$PduFormatChecker;->write(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1635
    invoke-static {}, Landroid/telephony/SmsMessage$PduFormatChecker;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static read()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1642
    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 1655
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    .line 1644
    .end local v1           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1648
    .restart local v1       #stringBuilder:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    .line 1649
    :goto_1
    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .local v2, temp:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1650
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1651
    .end local v2           #temp:I
    :catch_0
    move-exception v0

    .line 1652
    .local v0, e:Ljava/io/IOException;
    const-string v3, "SMS"

    const-string v4, "[PduFormatChecker] faile to read"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static write(Ljava/lang/String;)V
    .locals 5
    .parameter "pduFormat"

    .prologue
    .line 1659
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1662
    .local v0, bData:[B
    :try_start_0
    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1663
    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1664
    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1667
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Landroid/telephony/SmsMessage$PduFormatChecker;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    .line 1668
    sget-object v2, Landroid/telephony/SmsMessage$PduFormatChecker;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :goto_0
    return-void

    .line 1669
    :catch_0
    move-exception v1

    .line 1670
    .local v1, e:Ljava/io/IOException;
    const-string v2, "SMS"

    const-string v3, "[PduFormatChecker] faile to write"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
