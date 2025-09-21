.class public Ll0/e;
.super Lj0/b;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj0/b<",
        "Ll0/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lj0/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Lj0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Ll0/c;

    invoke-virtual {p0}, Ll0/c;->i()I

    move-result p0

    return p0
.end method

.method public c()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ll0/c;",
            ">;"
        }
    .end annotation

    const-class p0, Ll0/c;

    return-object p0
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lj0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Ll0/c;

    invoke-virtual {p0}, Ll0/c;->e()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Ll0/c;

    invoke-virtual {v0}, Ll0/c;->stop()V

    .line 2
    iget-object p0, p0, Lj0/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast p0, Ll0/c;

    invoke-virtual {p0}, Ll0/c;->k()V

    return-void
.end method
