.class public Lcom/android/internal/telephony/KddiSmsDuplicate;
.super Ljava/lang/Object;
.source "KddiSmsDuplicate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    }
.end annotation


# static fields
.field public static final INVALIDATE_MESSAGE_ID:I = -0x1

.field private static final KDDI_DUPLICATE_FILENAME:Ljava/lang/String; = "duplicate_file.dat"

.field private static final KDDI_MESSAGE_DATA_MAX_SIZE:I = 0xc8

.field private static final KDDI_TAG:Ljava/lang/String; = "KDDI_SMS"


# instance fields
.field private mCdmaSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

.field private mCheckedNum:I

.field private mContext:Landroid/content/Context;

.field private mDuplicateList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUseFile:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/content/Context;IZ)V
    .locals 0
    .parameter "dispatcher"
    .parameter "context"
    .parameter "checkedNum"
    .parameter "useFile"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mCdmaSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 53
    iput-object p2, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mContext:Landroid/content/Context;

    .line 54
    iput p3, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mCheckedNum:I

    .line 55
    iput-boolean p4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mUseFile:Z

    .line 56
    return-void
.end method

.method private readDuplicateFile()Z
    .locals 11

    .prologue
    .line 124
    const/4 v9, 0x0

    .line 126
    .local v9, result:Z
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mContext:Landroid/content/Context;

    const-string v10, "duplicate_file.dat"

    invoke-virtual {v1, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8

    .line 130
    .local v8, fileInput:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .local v6, din:Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 135
    .local v2, messageId:I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 136
    .local v3, sendAck:I
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 137
    .local v4, length:I
    const/16 v1, 0xc8

    if-le v4, v1, :cond_0

    .line 138
    const/16 v4, 0xc8

    .line 140
    :cond_0
    new-array v5, v4, [B

    .line 141
    .local v5, data:[B
    const/4 v1, 0x0

    invoke-virtual {v6, v5, v1, v4}, Ljava/io/DataInputStream;->read([BII)I

    .line 144
    new-instance v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;-><init>(Lcom/android/internal/telephony/KddiSmsDuplicate;III[B)V

    .line 145
    .local v0, info:Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 147
    .end local v0           #info:Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    .end local v2           #messageId:I
    .end local v3           #sendAck:I
    .end local v4           #length:I
    .end local v5           #data:[B
    :catch_0
    move-exception v7

    .line 148
    .local v7, e:Ljava/io/EOFException;
    :try_start_2
    const-string v1, "KDDI_SMS"

    const-string v10, "checkSmsDuplicate() duplicate_file reached EOF "

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 151
    const/4 v9, 0x1

    .line 158
    .end local v6           #din:Ljava/io/DataInputStream;
    .end local v7           #e:Ljava/io/EOFException;
    .end local v8           #fileInput:Ljava/io/FileInputStream;
    :goto_1
    return v9

    .line 150
    .restart local v6       #din:Ljava/io/DataInputStream;
    .restart local v8       #fileInput:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v1

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 151
    const/4 v9, 0x1

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 154
    .end local v6           #din:Ljava/io/DataInputStream;
    .end local v8           #fileInput:Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    .line 155
    .local v7, e:Ljava/io/IOException;
    const-string v1, "KDDI_SMS"

    const-string v10, "checkSmsDuplicate() failed to read duplicate_file "

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public kddiCheckSmsDuplicate(I[B)Z
    .locals 10
    .parameter "messageId"
    .parameter "userdata"

    .prologue
    const/4 v9, 0x1

    .line 67
    const/4 v4, 0x0

    .line 69
    .local v4, result:Z
    const/4 v6, 0x0

    .line 70
    .local v6, sameData:Z
    const/4 v2, 0x0

    .line 73
    .local v2, listNum:I
    iget-object v7, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mUseFile:Z

    if-ne v7, v9, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/KddiSmsDuplicate;->readDuplicateFile()Z

    move-result v7

    if-nez v7, :cond_0

    .line 75
    const-string v7, "KDDI_SMS"

    const-string v8, "readDuplicateFile() failed to read duplicate_file "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 114
    .end local v4           #result:Z
    .local v5, result:I
    :goto_0
    return v5

    .line 82
    .end local v5           #result:I
    .restart local v4       #result:Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    if-eqz v7, :cond_5

    .line 83
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 84
    iget-object v7, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    .line 85
    .local v0, duplicateInfo:Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    iget v7, v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    if-ne v7, p1, :cond_2

    .line 86
    iget-object v3, v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBody:[B

    .line 88
    .local v3, message:[B
    iget v7, v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    array-length v8, p2

    if-ne v7, v8, :cond_2

    .line 89
    const/4 v1, 0x0

    .local v1, index:I
    :goto_2
    iget v7, v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    if-ge v1, v7, :cond_2

    .line 90
    aget-byte v7, v3, v1

    aget-byte v8, p2, v1

    if-ne v7, v8, :cond_1

    .line 91
    const/4 v6, 0x1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_1
    const/4 v6, 0x0

    .line 99
    .end local v1           #index:I
    .end local v3           #message:[B
    :cond_2
    if-ne v6, v9, :cond_6

    .line 105
    .end local v0           #duplicateInfo:Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    :cond_3
    if-eqz v6, :cond_5

    .line 106
    iget-object v7, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v7, v7, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    if-nez v7, :cond_7

    .line 111
    :cond_4
    :goto_3
    const/4 v4, 0x1

    :cond_5
    move v5, v4

    .line 114
    .restart local v5       #result:I
    goto :goto_0

    .line 83
    .end local v5           #result:I
    .restart local v0       #duplicateInfo:Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v0           #duplicateInfo:Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v7, v7, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    if-ne v7, v9, :cond_4

    goto :goto_3
.end method

.method public kddiUpdateSmsDuplicate(I[BLcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 8
    .parameter "messageID"
    .parameter "messageData"
    .parameter "accessory"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 171
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    .line 173
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    invoke-virtual {p3}, Lcom/android/internal/telephony/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v3

    array-length v4, p2

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;-><init>(Lcom/android/internal/telephony/KddiSmsDuplicate;III[B)V

    .line 175
    .local v0, mSmsDuplicateInfo:Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;
    iget-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mCheckedNum:I

    if-lt v1, v2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mCheckedNum:I

    sub-int/2addr v1, v2

    add-int/lit8 v6, v1, 0x1

    .line 177
    .local v6, exceedsNum:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 182
    .end local v6           #exceedsNum:I
    .end local v7           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 185
    iget v1, v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 186
    iget v1, v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    iget v2, v0, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/KddiSmsDuplicate;->kddiUpdateSmsDuplicateFile(II)V

    .line 188
    :cond_2
    return-void
.end method

.method public kddiUpdateSmsDuplicateFile(II)V
    .locals 7
    .parameter "sendAck"
    .parameter "messageId"

    .prologue
    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    if-ne v4, p2, :cond_2

    .line 201
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 202
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iput p1, v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mContext:Landroid/content/Context;

    const-string v5, "duplicate_file.dat"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 207
    .local v2, fileOutput:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    .local v0, dout:Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 210
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageID:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mSendAck:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 212
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget v4, v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBodyLength:I

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 213
    iget-object v4, p0, Lcom/android/internal/telephony/KddiSmsDuplicate;->mDuplicateList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/KddiSmsDuplicate$KddiSmsDuplicateInfo;->mMessageBody:[B

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 217
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 227
    .end local v0           #dout:Ljava/io/DataOutputStream;
    .end local v2           #fileOutput:Ljava/io/FileOutputStream;
    .end local v3           #i:I
    :goto_1
    return-void

    .line 219
    :cond_2
    const-string v4, "KDDI_SMS"

    const-string v5, "KDDIupdateSmsDuplicateFile() MessageID is different "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "KDDI_SMS"

    const-string v5, "KDDIupdateSmsDuplicateFile() failed to update duplicate_file "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 225
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "KDDI_SMS"

    const-string v5, "KDDIupdateSmsDuplicateFile() failed to update duplicate_file "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
