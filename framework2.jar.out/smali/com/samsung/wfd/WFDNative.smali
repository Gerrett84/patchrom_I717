.class public Lcom/samsung/wfd/WFDNative;
.super Ljava/lang/Object;
.source "WFDNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WFD.Native.java"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "samsung_psi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    const-string v0, "WFD_ENGINE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callbackFromNative(I)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 31
    const-string v1, "WFD.Native.java"

    const-string v2, "callbackFromNative: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sparse-switch p0, :sswitch_data_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 34
    :sswitch_0
    const-string v1, "WFD.Native.java"

    const-string v2, "WFD client connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v1, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, intent_connected:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    sget-object v1, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    const-string v1, "WFD.Native.java"

    const-string v2, "WFD client connected broadcast sent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v0           #intent_connected:Landroid/content/Intent;
    :sswitch_1
    const-string v1, "WFD.Native.java"

    const-string v2, "WFD disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static native changeParams(III)Z
.end method

.method public static native getEngineStatus()I
.end method

.method public static native invokeStreaming(III)Z
.end method

.method public static native pause()Z
.end method

.method public static native resume()Z
.end method

.method public static native revokeStreaming()Z
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    sput-object p0, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static native start(IIII)Z
.end method

.method public static native stop()Z
.end method
