.class Lcom/movial/ipphone/WifiCallSwitchPreference$2;
.super Landroid/os/Handler;
.source "WifiCallSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/WifiCallSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$2;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$2;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    const-string v1, "Disabled"

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$2;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
