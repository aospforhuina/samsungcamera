.class public Lp/f;
.super Lp/b;
.source "NullLayer.java"


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/n;Lp/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp/b;-><init>(Lcom/airbnb/lottie/n;Lp/e;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lp/b;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    return-void
.end method
