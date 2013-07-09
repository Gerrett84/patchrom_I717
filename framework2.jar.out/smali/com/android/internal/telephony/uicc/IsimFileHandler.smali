.class public final Lcom/android/internal/telephony/uicc/IsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "IsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_IsimFH"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "IsimFileHandler finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->logd(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 49
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f02 -> :sswitch_0
        0x6f03 -> :sswitch_0
        0x6f04 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f09 -> :sswitch_0
        0x6fd5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 56
    const-string v0, "RIL_IsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 60
    const-string v0, "RIL_IsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method
