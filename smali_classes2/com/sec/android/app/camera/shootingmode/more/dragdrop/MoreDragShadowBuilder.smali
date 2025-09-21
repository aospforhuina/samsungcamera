.class public Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MoreDragShadowBuilder.java"


# static fields
.field private static mShadow:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object p0, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragShadowBuilder;->mShadow:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragShadowBuilder;->mShadow:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    .line 5
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
