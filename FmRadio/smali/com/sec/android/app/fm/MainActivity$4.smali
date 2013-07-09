.class Lcom/sec/android/app/fm/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x42

    const/16 v2, 0x17

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1092
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 1053
    :pswitch_1
    if-eq p2, v2, :cond_1

    if-ne p2, v5, :cond_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput-boolean v4, v1, Lcom/sec/android/app/fm/MainActivity;->mPrevDown:Z

    .line 1056
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput-boolean v4, v1, Lcom/sec/android/app/fm/MainActivity;->mNextDown:Z

    goto :goto_0

    .line 1060
    :pswitch_2
    if-eq p2, v2, :cond_2

    if-ne p2, v5, :cond_0

    .line 1061
    :cond_2
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3300(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3400(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1065
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "MotionEvent.ACTION_UP"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1066
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1070
    .local v0, ad:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 1075
    .end local v0           #ad:Landroid/graphics/drawable/AnimationDrawable;
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "MotionEvent.ACTION_DOWN"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 1077
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/sec/android/app/fm/MainActivity;->access$3500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1081
    .restart local v0       #ad:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x7f070059
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
