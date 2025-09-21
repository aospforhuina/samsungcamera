.class public final Lh0/t$a;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lh0/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ly/k;

.field private final b:Lb0/b;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lb0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lb0/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p3}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/b;

    iput-object v0, p0, Lh0/t$a;->b:Lb0/b;

    .line 3
    invoke-static {p2}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lh0/t$a;->c:Ljava/util/List;

    .line 4
    new-instance p2, Ly/k;

    invoke-direct {p2, p1, p3}, Ly/k;-><init>(Ljava/io/InputStream;Lb0/b;)V

    iput-object p2, p0, Lh0/t$a;->a:Ly/k;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lh0/t$a;->c:Ljava/util/List;

    iget-object v1, p0, Lh0/t$a;->a:Ly/k;

    .line 2
    invoke-virtual {v1}, Ly/k;->d()Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lh0/t$a;->b:Lb0/b;

    .line 3
    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/a;->a(Ljava/util/List;Ljava/io/InputStream;Lb0/b;)I

    move-result p0

    return p0
.end method

.method public b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object p0, p0, Lh0/t$a;->a:Ly/k;

    invoke-virtual {p0}, Ly/k;->d()Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lh0/t$a;->a:Ly/k;

    invoke-virtual {p0}, Ly/k;->c()V

    return-void
.end method

.method public d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    iget-object v0, p0, Lh0/t$a;->c:Ljava/util/List;

    iget-object v1, p0, Lh0/t$a;->a:Ly/k;

    invoke-virtual {v1}, Ly/k;->d()Ljava/io/InputStream;

    move-result-object v1

    iget-object p0, p0, Lh0/t$a;->b:Lb0/b;

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/a;->d(Ljava/util/List;Ljava/io/InputStream;Lb0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method
