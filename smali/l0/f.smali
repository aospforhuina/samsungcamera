.class public Ll0/f;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lx/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/m<",
        "Ll0/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lx/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx/m;

    iput-object p1, p0, Ll0/f;->b:Lx/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    iget-object p0, p0, Ll0/f;->b:Lx/m;

    invoke-interface {p0, p1}, Lx/f;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public b(Landroid/content/Context;La0/v;II)La0/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La0/v<",
            "Ll0/c;",
            ">;II)",
            "La0/v<",
            "Ll0/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, La0/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll0/c;

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/b;->f()Lb0/d;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ll0/c;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Lh0/e;

    invoke-direct {v3, v2, v1}, Lh0/e;-><init>(Landroid/graphics/Bitmap;Lb0/d;)V

    .line 5
    iget-object v1, p0, Ll0/f;->b:Lx/m;

    invoke-interface {v1, p1, v3, p3, p4}, Lx/m;->b(Landroid/content/Context;La0/v;II)La0/v;

    move-result-object p1

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    invoke-interface {v3}, La0/v;->recycle()V

    .line 8
    :cond_0
    invoke-interface {p1}, La0/v;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 9
    iget-object p0, p0, Ll0/f;->b:Lx/m;

    invoke-virtual {v0, p0, p1}, Ll0/c;->m(Lx/m;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ll0/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ll0/f;

    .line 3
    iget-object p0, p0, Ll0/f;->b:Lx/m;

    iget-object p1, p1, Ll0/f;->b:Lx/m;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ll0/f;->b:Lx/m;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
