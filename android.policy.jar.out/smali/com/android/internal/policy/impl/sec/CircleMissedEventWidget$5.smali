.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;
.super Ljava/lang/Object;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isMissedPhoneLock(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "CircleMissedEventWidget"

    const-string v2, "isMissedPhoneLock in onCircleUnlocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 254
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$7;->$SwitchMap$com$android$internal$policy$impl$sec$CircleMissedEventWidget$UnlockMode:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1000(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$UnlockMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    #calls: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)V

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;

    #calls: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$NotiMode;)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 267
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const-string v1, "tab"

    const-string v2, "logs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    :goto_1
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 272
    :cond_1
    const-string v1, "ViewBy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
