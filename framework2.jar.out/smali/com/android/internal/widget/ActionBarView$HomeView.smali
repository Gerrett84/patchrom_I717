.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field public mIconView:Landroid/widget/ImageView;

.field private mIsParentThemeDeviceDefault:Z

.field private mUpMargin:I

.field private mUpView:Landroid/view/View;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1465
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1466
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 1469
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1472
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1473
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10103fd

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1474
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 1475
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    .line 1479
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    .line 1481
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1509
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1493
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1494
    const/4 v0, 0x1

    return v0
.end method

.method public getLeftOffset()I
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 1529
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_1

    .line 1530
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    .line 1533
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 1514
    const v2, 0x1020255

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    .line 1515
    const v2, 0x102002c

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    .line 1518
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_0

    .line 1519
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1520
    .local v1, upLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1521
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1522
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1523
    .local v0, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1525
    .end local v0           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #upLp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1583
    sub-int v17, p5, p3

    div-int/lit8 v15, v17, 0x2

    .line 1584
    .local v15, vCenter:I
    sub-int v16, p4, p2

    .line 1585
    .local v16, width:I
    const/4 v12, 0x0

    .line 1586
    .local v12, upOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1588
    .local v11, upLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1589
    .local v10, upHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1590
    .local v14, upWidth:I
    div-int/lit8 v17, v10, 0x2

    sub-int v13, v15, v17

    .line 1592
    .local v13, upTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    move-object/from16 v17, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v19, v19, v14

    add-int v20, v13, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1599
    :goto_0
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v17, v17, v14

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    add-int v12, v17, v18

    .line 1600
    sub-int v16, v16, v12

    .line 1601
    add-int p2, p2, v12

    .line 1603
    .end local v10           #upHeight:I
    .end local v11           #upLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v13           #upTop:I
    .end local v14           #upWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1604
    .local v7, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    .line 1605
    .local v5, iconHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    .line 1606
    .local v9, iconWidth:I
    sub-int v17, p4, p2

    div-int/lit8 v4, v17, 0x2

    .line 1607
    .local v4, hCenter:I
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    div-int/lit8 v18, v9, 0x2

    sub-int v18, v4, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v6, v12, v17

    .line 1609
    .local v6, iconLeft:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIsParentThemeDeviceDefault:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1610
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v17, v0

    add-int v6, v12, v17

    .line 1613
    :cond_1
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v0

    div-int/lit8 v18, v5, 0x2

    sub-int v18, v15, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1614
    .local v8, iconTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    add-int v18, v6, v9

    add-int v19, v8, v5

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v8, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1615
    return-void

    .line 1596
    .end local v4           #hCenter:I
    .end local v5           #iconHeight:I
    .end local v6           #iconLeft:I
    .end local v7           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v8           #iconTop:I
    .end local v9           #iconWidth:I
    .restart local v10       #upHeight:I
    .restart local v11       #upLp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v13       #upTop:I
    .restart local v14       #upWidth:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    add-int v19, v13, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1540
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1541
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 1542
    .local v10, upLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    .line 1543
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    .line 1544
    .local v3, width:I
    :goto_0
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    .line 1545
    .local v6, height:I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1546
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1547
    .local v9, iconLp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1548
    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1551
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1552
    .local v11, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1553
    .local v7, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1554
    .local v12, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1556
    .local v8, heightSize:I
    sparse-switch v11, :sswitch_data_0

    .line 1567
    :goto_1
    sparse-switch v7, :sswitch_data_1

    .line 1578
    :goto_2
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    .line 1579
    return-void

    .line 1543
    .end local v3           #width:I
    .end local v6           #height:I
    .end local v7           #heightMode:I
    .end local v8           #heightSize:I
    .end local v9           #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #widthMode:I
    .end local v12           #widthSize:I
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    goto :goto_0

    .line 1558
    .restart local v3       #width:I
    .restart local v6       #height:I
    .restart local v7       #heightMode:I
    .restart local v8       #heightSize:I
    .restart local v9       #iconLp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11       #widthMode:I
    .restart local v12       #widthSize:I
    :sswitch_0
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1559
    goto :goto_1

    .line 1561
    :sswitch_1
    move v3, v12

    .line 1562
    goto :goto_1

    .line 1569
    :sswitch_2
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1570
    goto :goto_2

    .line 1572
    :sswitch_3
    move v6, v8

    .line 1573
    goto :goto_2

    .line 1556
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 1567
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1499
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1500
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1501
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1502
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1489
    return-void
.end method

.method public setUp(Z)V
    .locals 2
    .parameter "isUp"

    .prologue
    .line 1484
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1485
    return-void

    .line 1484
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
