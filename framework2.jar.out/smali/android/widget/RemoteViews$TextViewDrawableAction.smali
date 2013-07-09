.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# static fields
.field public static final TAG:I = 0xb


# instance fields
.field d1:I

.field d2:I

.field d3:I

.field d4:I

.field isRelative:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIIII)V
    .locals 1
    .parameter
    .parameter "viewId"
    .parameter "isRelative"
    .parameter "d1"
    .parameter "d2"
    .parameter "d3"
    .parameter "d4"

    .prologue
    .line 1164
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1205
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1165
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1166
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1167
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 1168
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 1169
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 1170
    iput p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    .line 1171
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .parameter
    .parameter "parcel"

    .prologue
    const/4 v0, 0x0

    .line 1173
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1205
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 1178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 1179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    .line 1180
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6
    .parameter "root"
    .parameter "rootParent"
    .parameter "handler"

    .prologue
    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1195
    .local v0, context:Landroid/content/Context;
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1196
    .local v1, target:Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v2, :cond_1

    .line 1198
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1200
    :cond_1
    iget v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1183
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
