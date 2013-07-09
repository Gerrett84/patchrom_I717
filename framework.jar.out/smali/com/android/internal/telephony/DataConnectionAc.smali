.class public Lcom/android/internal/telephony/DataConnectionAc;
.super Lcom/android/internal/util/AsyncChannel;
.source "DataConnectionAc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionAc$LinkPropertyChangeAction;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x41000

.field private static final CMD_TO_STRING_COUNT:I = 0x1c

.field private static final DBG:Z = false

.field public static final REQ_ADD_APNCONTEXT:I = 0x41012

.field public static final REQ_GET_APNCONTEXT_LIST:I = 0x41016

.field public static final REQ_GET_APNSETTING:I = 0x41004

.field public static final REQ_GET_CID:I = 0x41002

.field public static final REQ_GET_LINK_CAPABILITIES:I = 0x4100a

.field public static final REQ_GET_LINK_PROPERTIES:I = 0x41006

.field public static final REQ_GET_RECONNECT_INTENT:I = 0x4101a

.field public static final REQ_GET_REFCOUNT:I = 0x41010

.field public static final REQ_IS_INACTIVE:I = 0x41000

.field public static final REQ_REMOVE_APNCONTEXT:I = 0x41014

.field public static final REQ_RESET:I = 0x4100e

.field public static final REQ_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41008

.field public static final REQ_SET_RECONNECT_INTENT:I = 0x41018

.field public static final REQ_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE:I = 0x4100c

.field public static final RSP_ADD_APNCONTEXT:I = 0x41013

.field public static final RSP_GET_APNCONTEXT_LIST:I = 0x41017

.field public static final RSP_GET_APNSETTING:I = 0x41005

.field public static final RSP_GET_CID:I = 0x41003

.field public static final RSP_GET_LINK_CAPABILITIES:I = 0x4100b

.field public static final RSP_GET_LINK_PROPERTIES:I = 0x41007

.field public static final RSP_GET_RECONNECT_INTENT:I = 0x4101b

.field public static final RSP_GET_REFCOUNT:I = 0x41011

.field public static final RSP_IS_INACTIVE:I = 0x41001

.field public static final RSP_REMOVE_APNCONTEXT:I = 0x41015

.field public static final RSP_RESET:I = 0x4100f

.field public static final RSP_SET_LINK_PROPERTIES_HTTP_PROXY:I = 0x41009

.field public static final RSP_SET_RECONNECT_INTENT:I = 0x41019

.field public static final RSP_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE:I = 0x4100d

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field public dataConnection:Lcom/android/internal/telephony/DataConnection;

.field private mLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "REQ_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 90
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "RSP_IS_INACTIVE"

    aput-object v2, v0, v1

    .line 91
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "REQ_GET_CID"

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "RSP_GET_CID"

    aput-object v2, v0, v1

    .line 93
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "REQ_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "RSP_GET_APNSETTING"

    aput-object v2, v0, v1

    .line 95
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "REQ_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 96
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "RSP_GET_LINK_PROPERTIES"

    aput-object v2, v0, v1

    .line 97
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "REQ_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 99
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "RSP_SET_LINK_PROPERTIES_HTTP_PROXY"

    aput-object v2, v0, v1

    .line 101
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "REQ_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 102
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "RSP_GET_LINK_CAPABILITIES"

    aput-object v2, v0, v1

    .line 103
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "REQ_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE"

    aput-object v2, v0, v1

    .line 105
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "RSP_UPDATE_LINK_PROPERTIES_DATA_CALL_STATE"

    aput-object v2, v0, v1

    .line 107
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "REQ_RESET"

    aput-object v2, v0, v1

    .line 108
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "RSP_RESET"

    aput-object v2, v0, v1

    .line 109
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "REQ_GET_REFCOUNT"

    aput-object v2, v0, v1

    .line 110
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "RSP_GET_REFCOUNT"

    aput-object v2, v0, v1

    .line 111
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "REQ_ADD_APNCONTEXT"

    aput-object v2, v0, v1

    .line 112
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "RSP_ADD_APNCONTEXT"

    aput-object v2, v0, v1

    .line 113
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "REQ_REMOVE_APNCONTEXT"

    aput-object v2, v0, v1

    .line 114
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "RSP_REMOVE_APNCONTEXT"

    aput-object v2, v0, v1

    .line 115
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "REQ_GET_APNCONTEXT_LIST"

    aput-object v2, v0, v1

    .line 116
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "RSP_GET_APNCONTEXT_LIST"

    aput-object v2, v0, v1

    .line 117
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "REQ_SET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 118
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x19

    const-string v2, "RSP_SET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 119
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1a

    const-string v2, "REQ_GET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 120
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x1b

    const-string v2, "RSP_GET_RECONNECT_INTENT"

    aput-object v2, v0, v1

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V
    .locals 0
    .parameter "dc"
    .parameter "logTag"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    .line 153
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnectionAc;->mLogTag:Ljava/lang/String;

    .line 154
    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 2
    .parameter "cmd"

    .prologue
    const v1, 0x41000

    .line 123
    sub-int/2addr p0, v1

    .line 124
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/internal/telephony/DataConnectionAc;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    add-int v0, p0, v1

    invoke-static {v0}, Lcom/android/internal/util/AsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionAc;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataConnectionAc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method


# virtual methods
.method public addApnContextSync(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 455
    const v1, 0x41012

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 456
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41013

    if-ne v1, v2, :cond_0

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addApnContext error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApnListSync()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    const v1, 0x41016

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 515
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41017

    if-ne v1, v2, :cond_0

    .line 517
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspApnList(Landroid/os/Message;)Ljava/util/Collection;

    move-result-object v1

    .line 521
    :goto_0
    return-object v1

    .line 519
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnList error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getApnSettingSync()Lcom/android/internal/telephony/DataProfile;
    .locals 3

    .prologue
    .line 284
    const v1, 0x41004

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 285
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41005

    if-ne v1, v2, :cond_0

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    .line 288
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnSetting error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 289
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCidSync()I
    .locals 3

    .prologue
    .line 214
    const v1, 0x41002

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 215
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41003

    if-ne v1, v2, :cond_0

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspCid(Landroid/os/Message;)I

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspCid error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 219
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;
    .locals 3

    .prologue
    .line 410
    const v1, 0x4100a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 411
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100b

    if-ne v1, v2, :cond_0

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;

    move-result-object v1

    .line 415
    :goto_0
    return-object v1

    .line 414
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkCapabilities error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 415
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkPropertiesSync()Landroid/net/LinkProperties;
    .locals 3

    .prologue
    .line 320
    const v1, 0x41006

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41007

    if-ne v1, v2, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 324
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkProperties error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 325
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReconnectIntentSync()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 574
    const v1, 0x4101a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4101b

    if-ne v1, v2, :cond_0

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspReconnectIntent(Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 580
    :goto_0
    return-object v1

    .line 579
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReconnectIntent error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 580
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRefCountSync()I
    .locals 3

    .prologue
    .line 248
    const v1, 0x41010

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41011

    if-ne v1, v2, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspRefCount(Landroid/os/Message;)I

    move-result v1

    .line 253
    :goto_0
    return v1

    .line 252
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspRefCount error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 253
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isInactiveSync()Z
    .locals 3

    .prologue
    .line 180
    const v1, 0x41000

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41001

    if-ne v1, v2, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspIsInactive(Landroid/os/Message;)Z

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspIsInactive error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeApnContextSync(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    .line 478
    const v1, 0x41014

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 479
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41015

    if-ne v1, v2, :cond_0

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeApnContext error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reqAddApnContext(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 445
    const v1, 0x41012

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 447
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqApnSetting()V
    .locals 1

    .prologue
    .line 262
    const v0, 0x41004

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 264
    return-void
.end method

.method public reqCid()V
    .locals 1

    .prologue
    .line 194
    const v0, 0x41002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 196
    return-void
.end method

.method public reqGetApnList(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 491
    const v1, 0x41016

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 493
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqGetReconnectIntent()V
    .locals 2

    .prologue
    .line 553
    const v1, 0x4101a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqIsInactive()V
    .locals 1

    .prologue
    .line 161
    const v0, 0x41000

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 163
    return-void
.end method

.method public reqLinkCapabilities()V
    .locals 1

    .prologue
    .line 388
    const v0, 0x4100a

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 390
    return-void
.end method

.method public reqLinkProperties()V
    .locals 1

    .prologue
    .line 298
    const v0, 0x41006

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 300
    return-void
.end method

.method public reqRefCount()V
    .locals 1

    .prologue
    .line 228
    const v0, 0x41010

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 230
    return-void
.end method

.method public reqRemomveApnContext(Lcom/android/internal/telephony/ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 468
    const v1, 0x41014

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqReset()V
    .locals 1

    .prologue
    .line 424
    const v0, 0x4100e

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(I)V

    .line 426
    return-void
.end method

.method public reqSetLinkPropertiesHttpProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 334
    const v0, 0x41008

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(ILjava/lang/Object;)V

    .line 336
    return-void
.end method

.method public reqSetReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 530
    const v1, 0x41018

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, response:Landroid/os/Message;
    return-void
.end method

.method public reqUpdateLinkPropertiesDataCallState(Lcom/android/internal/telephony/DataCallState;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 356
    const v0, 0x4100c

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessage(ILjava/lang/Object;)V

    .line 358
    return-void
.end method

.method public resetSync()V
    .locals 3

    .prologue
    .line 432
    const v1, 0x4100e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100f

    if-ne v1, v2, :cond_0

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restSync error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rspApnList(Landroid/os/Message;)Ljava/util/Collection;
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    .line 503
    .local v0, retVal:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #retVal:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .restart local v0       #retVal:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_0
    return-object v0
.end method

.method public rspApnSetting(Landroid/os/Message;)Lcom/android/internal/telephony/DataProfile;
    .locals 1
    .parameter "response"

    .prologue
    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 275
    .local v0, retVal:Lcom/android/internal/telephony/DataProfile;
    return-object v0
.end method

.method public rspCid(Landroid/os/Message;)I
    .locals 1
    .parameter "response"

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 207
    .local v0, retVal:I
    return v0
.end method

.method public rspIsInactive(Landroid/os/Message;)Z
    .locals 2
    .parameter "response"

    .prologue
    const/4 v0, 0x1

    .line 171
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 173
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 171
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rspLinkCapabilities(Landroid/os/Message;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "response"

    .prologue
    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkCapabilities;

    .line 401
    .local v0, retVal:Landroid/net/LinkCapabilities;
    return-object v0
.end method

.method public rspLinkProperties(Landroid/os/Message;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "response"

    .prologue
    .line 309
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    .line 311
    .local v0, retVal:Landroid/net/LinkProperties;
    return-object v0
.end method

.method public rspReconnectIntent(Landroid/os/Message;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "response"

    .prologue
    .line 564
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    .line 565
    .local v0, retVal:Landroid/app/PendingIntent;
    return-object v0
.end method

.method public rspRefCount(Landroid/os/Message;)I
    .locals 1
    .parameter "response"

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 241
    .local v0, retVal:I
    return v0
.end method

.method public rspUpdateLinkPropertiesDataCallState(Landroid/os/Message;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 1
    .parameter "response"

    .prologue
    .line 361
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    .line 363
    .local v0, retVal:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    return-object v0
.end method

.method public setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    .locals 3
    .parameter "proxy"

    .prologue
    .line 342
    const v1, 0x41008

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 344
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41009

    if-ne v1, v2, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLinkPropertiesHttpPoxy error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setReconnectIntentSync(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 540
    const v1, 0x41018

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 541
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x41019

    if-ne v1, v2, :cond_0

    .line 546
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReconnectIntent error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLinkPropertiesDataCallStateSync(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .parameter "newState"

    .prologue
    .line 372
    const v1, 0x4100c

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/DataConnectionAc;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, response:Landroid/os/Message;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    const v2, 0x4100d

    if-ne v1, v2, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionAc;->rspUpdateLinkPropertiesDataCallState(Landroid/os/Message;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v1

    .line 379
    :goto_0
    return-object v1

    .line 378
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinkProperties error response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->log(Ljava/lang/String;)V

    .line 379
    new-instance v1, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    goto :goto_0
.end method
