.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addSwitchToPreviousSizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 0
    .parameter

    .prologue
    .line 2830
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2833
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2834
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2835
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2836
    .local v2, token:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetOfSwitchToPreviousSizeButton:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetOfSwitchToPreviousSizeButton:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v6

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2841
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #token:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 2838
    :catch_0
    move-exception v0

    .line 2839
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
