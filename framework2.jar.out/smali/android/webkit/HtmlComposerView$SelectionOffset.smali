.class public Landroid/webkit/HtmlComposerView$SelectionOffset;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionOffset"
.end annotation


# instance fields
.field public endOffset:I

.field public startOffset:I

.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;II)V
    .locals 0
    .parameter
    .parameter "stOff"
    .parameter "endOff"

    .prologue
    .line 5861
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SelectionOffset;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5862
    iput p2, p0, Landroid/webkit/HtmlComposerView$SelectionOffset;->startOffset:I

    .line 5863
    iput p3, p0, Landroid/webkit/HtmlComposerView$SelectionOffset;->endOffset:I

    .line 5864
    return-void
.end method
