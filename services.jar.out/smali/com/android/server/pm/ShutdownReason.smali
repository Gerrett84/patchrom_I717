.class public Lcom/android/server/pm/ShutdownReason;
.super Ljava/lang/Object;
.source "ShutdownReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShutdownReason$eSdReason;
    }
.end annotation


# static fields
.field private static final LENGTH_OF_LOG_INDEX:I = 0x2

.field private static final LENGTH_OF_SHUTDOWN_REASON:I = 0x19

.field private static final MAX_SHUTDOWN_LOG_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ShutdownReason"

.field private static final abnMagicNo:Ljava/lang/String; = "0x01021408"

.field private static final lpmMagicNo:Ljava/lang/String; = "0x12161319"

.field private static final norMagicNo:Ljava/lang/String; = "0x14151821"

.field private static final reasons:[[Ljava/lang/String; = null

.field private static final shutdownReason:Ljava/lang/String; = "/data/log/shutdown_reason"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ABNS"

    aput-object v2, v1, v4

    const-string v2, "ABONORMAL SHUTDOWN"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DTSR"

    aput-object v2, v1, v4

    const-string v2, "DATE/TIME SET REBOOT"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "GARB"

    aput-object v2, v1, v4

    const-string v2, "GLOBAL ACTIONS REBOOT"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GASD"

    aput-object v3, v2, v4

    const-string v3, "GLOBAL ACTIONS SHUTDOWN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LBSD"

    aput-object v3, v2, v4

    const-string v3, "LOW BATTERY SHUTDOWN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "LUCR"

    aput-object v3, v2, v4

    const-string v3, "LPM: USB CABLE REMOVED"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PCNF"

    aput-object v3, v2, v4

    const-string v3, "PHONE CRASH NOTIFIER"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PWDR"

    aput-object v3, v2, v4

    const-string v3, "PLATFORM WATCHDOG REBOOT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "RTNR"

    aput-object v3, v2, v4

    const-string v3, "RTN RESET"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SSSR"

    aput-object v3, v2, v4

    const-string v3, "SYSTEM SERVER SHUTDOWN OR REBOOT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UPSR"

    aput-object v3, v2, v4

    const-string v3, "UNKNOWN PLATFORM SHUTDOWN OR REBOOT"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/pm/ShutdownReason;->reasons:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static storeShutdownReason()V
    .locals 10

    .prologue
    .line 144
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/log/shutdown_reason"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v4, reasonFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 146
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_0

    .line 147
    const-string v7, "ShutdownReason"

    const-string v8, "Failed to create reasonFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 149
    const-string v7, "ShutdownReason"

    const-string v8, "Failed to set read access to reasonFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v7

    if-nez v7, :cond_2

    .line 151
    const-string v7, "ShutdownReason"

    const-string v8, "Failed to set write access to reasonFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 155
    .local v6, reasonRw:Ljava/io/FileReader;
    new-instance v5, Ljava/io/LineNumberReader;

    invoke-direct {v5, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v5, reasonLnr:Ljava/io/LineNumberReader;
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, curMagic:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 159
    invoke-virtual {v5}, Ljava/io/LineNumberReader;->close()V

    .line 160
    :cond_3
    if-eqz v6, :cond_4

    .line 161
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 163
    :cond_4
    if-eqz v0, :cond_8

    .line 164
    const-string v7, "0x01021408"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 165
    const-string v7, "ShutdownReason"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Writing abnormal reason to reason file, curMagic="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v7, "ABNS-"

    invoke-static {v7}, Lcom/android/server/pm/ShutdownReason;->writeReason(Ljava/lang/String;)Z

    .line 171
    :cond_5
    :goto_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v3, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v3, reasonAccess:Ljava/io/RandomAccessFile;
    const-string v7, "0x01021408"

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 175
    if-eqz v3, :cond_6

    .line 176
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 190
    :cond_6
    :goto_1
    const-string v7, "persist.sys.shutdown"

    const-string v8, "Default"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0           #curMagic:Ljava/lang/String;
    .end local v3           #reasonAccess:Ljava/io/RandomAccessFile;
    .end local v5           #reasonLnr:Ljava/io/LineNumberReader;
    .end local v6           #reasonRw:Ljava/io/FileReader;
    :goto_2
    return-void

    .line 167
    .restart local v0       #curMagic:Ljava/lang/String;
    .restart local v5       #reasonLnr:Ljava/io/LineNumberReader;
    .restart local v6       #reasonRw:Ljava/io/FileReader;
    :cond_7
    const-string v7, "0x12161319"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 168
    const-string v7, "ShutdownReason"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Writing lpm shutdown reason to reason file, curMagic="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v7, "LUCR-"

    invoke-static {v7}, Lcom/android/server/pm/ShutdownReason;->writeReason(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v0           #curMagic:Ljava/lang/String;
    .end local v5           #reasonLnr:Ljava/io/LineNumberReader;
    .end local v6           #reasonRw:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 178
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #curMagic:Ljava/lang/String;
    .restart local v5       #reasonLnr:Ljava/io/LineNumberReader;
    .restart local v6       #reasonRw:Ljava/io/FileReader;
    :cond_8
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v3, v4, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .restart local v3       #reasonAccess:Ljava/io/RandomAccessFile;
    const-string v7, "0x01021408\n"

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 181
    const-string v7, "0x12161319"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 182
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    sget-object v7, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

    invoke-virtual {v7}, Lcom/android/server/pm/ShutdownReason$eSdReason;->ordinal()I

    move-result v7

    if-ge v2, v7, :cond_9

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/pm/ShutdownReason;->reasons:[[Ljava/lang/String;

    aget-object v8, v8, v2

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/pm/ShutdownReason;->reasons:[[Ljava/lang/String;

    aget-object v8, v8, v2

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 186
    :cond_9
    if-eqz v3, :cond_6

    .line 187
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static writeReason(Ljava/lang/String;)Z
    .locals 14
    .parameter "reason"

    .prologue
    const/4 v13, 0x1

    .line 78
    new-instance v5, Ljava/io/File;

    const-string v11, "/data/log/shutdown_reason"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v5, reasonFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 80
    .local v9, seekToLogidx:I
    const-string v3, ""

    .local v3, logIndex:Ljava/lang/String;
    const-string v10, ""

    .line 83
    .local v10, writeBuf:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 84
    .local v7, reasonRw:Ljava/io/FileReader;
    new-instance v6, Ljava/io/LineNumberReader;

    invoke-direct {v6, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v6, reasonLnr:Ljava/io/LineNumberReader;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v11, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

    invoke-virtual {v11}, Lcom/android/server/pm/ShutdownReason$eSdReason;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    if-gt v1, v11, :cond_2

    .line 88
    sget-object v11, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

    invoke-virtual {v11}, Lcom/android/server/pm/ShutdownReason$eSdReason;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    if-ne v1, v11, :cond_0

    .line 89
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    .end local v1           #i:I
    .end local v6           #reasonLnr:Ljava/io/LineNumberReader;
    .end local v7           #reasonRw:Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    const-string v11, "ShutdownReason"

    const-string v12, "In shutdownLogHandler, failed to write reason"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v13

    .line 93
    .restart local v1       #i:I
    .restart local v6       #reasonLnr:Ljava/io/LineNumberReader;
    .restart local v7       #reasonRw:Ljava/io/FileReader;
    :cond_2
    if-nez v3, :cond_3

    .line 94
    :try_start_1
    const-string v3, "0"

    .line 96
    :cond_3
    if-eqz v6, :cond_4

    .line 97
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->close()V

    .line 98
    :cond_4
    if-eqz v7, :cond_5

    .line 99
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 101
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    rem-int/lit8 v11, v11, 0xa

    add-int/lit8 v2, v11, 0x1

    .line 103
    .local v2, logIdx:I
    const/16 v11, 0xa

    if-ge v2, v11, :cond_6

    .line 104
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    :goto_3
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v11, "rw"

    invoke-direct {v4, v5, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v4, reasonAccess:Ljava/io/RandomAccessFile;
    const-string v11, "0x12161319"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v9, v11, 0x1

    .line 112
    const/4 v1, 0x0

    :goto_4
    sget-object v11, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

    invoke-virtual {v11}, Lcom/android/server/pm/ShutdownReason$eSdReason;->ordinal()I

    move-result v11

    if-ge v1, v11, :cond_7

    .line 113
    sget-object v11, Lcom/android/server/pm/ShutdownReason;->reasons:[[Ljava/lang/String;

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    .line 114
    sget-object v11, Lcom/android/server/pm/ShutdownReason;->reasons:[[Ljava/lang/String;

    aget-object v11, v11, v1

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v9, v11

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 106
    .end local v4           #reasonAccess:Ljava/io/RandomAccessFile;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 117
    .restart local v4       #reasonAccess:Ljava/io/RandomAccessFile;
    :cond_7
    sget-object v11, Lcom/android/server/pm/ShutdownReason$eSdReason;->SD_COUNT:Lcom/android/server/pm/ShutdownReason$eSdReason;

    invoke-virtual {v11}, Lcom/android/server/pm/ShutdownReason$eSdReason;->ordinal()I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v9, v11

    .line 119
    int-to-long v11, v9

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 120
    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 122
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/pm/ShutdownReason;->getCurrentTime()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 123
    add-int/lit8 v11, v9, 0x2

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v2, -0x1

    mul-int/lit8 v12, v12, 0x19

    add-int v8, v11, v12

    .line 124
    .local v8, resIdx:I
    int-to-long v11, v8

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    invoke-virtual {v4, v10}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 127
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public static writeSMagicNo(Ljava/lang/String;)V
    .locals 5
    .parameter "magicNo"

    .prologue
    .line 64
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/shutdown_reason"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v2, reasonFile:Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v1, reasonAccess:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 68
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #reasonAccess:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ShutdownReason"

    const-string v4, "Failed to set setting magic number"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
