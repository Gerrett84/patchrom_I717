.class Landroid/widget/RemoteViews$SetDrawableParameters;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawableParameters"
.end annotation


# static fields
.field public static final TAG:I = 0x3


# instance fields
.field alpha:I

.field colorFilter:I

.field filterMode:Landroid/graphics/PorterDuff$Mode;

.field level:I

.field targetBackground:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    .line 581
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 582
    iput p2, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    .line 583
    iput-boolean p3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 584
    iput p4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    .line 585
    iput p5, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    .line 586
    iput-object p6, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 587
    iput p7, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    .line 588
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 5
    .parameter
    .parameter "parcel"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 590
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0, v4}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 596
    .local v0, hasMode:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    .line 601
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    .line 602
    return-void

    .end local v0           #hasMode:Z
    :cond_0
    move v1, v3

    .line 592
    goto :goto_0

    :cond_1
    move v0, v3

    .line 595
    goto :goto_1

    .line 599
    .restart local v0       #hasMode:Z
    :cond_2
    iput-object v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    const/4 v5, -0x1

    .line 621
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 622
    .local v1, target:Landroid/view/View;
    if-nez v1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    const/4 v2, 0x0

    .line 626
    .local v2, targetDrawable:Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v3, :cond_5

    .line 627
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 633
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 635
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    if-eq v3, v5, :cond_3

    .line 636
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 638
    :cond_3
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_4

    .line 639
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    iget-object v4, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 641
    :cond_4
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    if-eq v3, v5, :cond_0

    .line 642
    iget v3, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 628
    :cond_5
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 629
    check-cast v0, Landroid/widget/ImageView;

    .line 630
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 605
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->targetBackground:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->colorFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->filterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    :goto_1
    iget v0, p0, Landroid/widget/RemoteViews$SetDrawableParameters;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    return-void

    :cond_0
    move v0, v2

    .line 607
    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
