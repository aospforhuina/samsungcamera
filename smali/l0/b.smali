.class public final Ll0/b;
.super Ljava/lang/Object;
.source "GifBitmapProvider.java"

# interfaces
.implements Lw/a$a;


# instance fields
.field private final a:Lb0/d;

.field private final b:Lb0/b;


# direct methods
.method public constructor <init>(Lb0/d;Lb0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll0/b;->a:Lb0/d;

    .line 3
    iput-object p2, p0, Ll0/b;->b:Lb0/b;

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ll0/b;->a:Lb0/d;

    invoke-interface {p0, p1, p2, p3}, Lb0/d;->e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public b(I)[I
    .locals 1

    .line 1
    iget-object p0, p0, Ll0/b;->b:Lb0/b;

    if-nez p0, :cond_0

    .line 2
    new-array p0, p1, [I

    return-object p0

    .line 3
    :cond_0
    const-class v0, [I

    invoke-interface {p0, p1, v0}, Lb0/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Ll0/b;->a:Lb0/d;

    invoke-interface {p0, p1}, Lb0/d;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public d([B)V
    .locals 0

    .line 1
    iget-object p0, p0, Ll0/b;->b:Lb0/b;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Lb0/b;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)[B
    .locals 1

    .line 1
    iget-object p0, p0, Ll0/b;->b:Lb0/b;

    if-nez p0, :cond_0

    .line 2
    new-array p0, p1, [B

    return-object p0

    .line 3
    :cond_0
    const-class v0, [B

    invoke-interface {p0, p1, v0}, Lb0/b;->d(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public f([I)V
    .locals 0

    .line 1
    iget-object p0, p0, Ll0/b;->b:Lb0/b;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Lb0/b;->put(Ljava/lang/Object;)V

    return-void
.end method
