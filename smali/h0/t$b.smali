.class public final Lh0/t$b;
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
    name = "b"
.end annotation


# instance fields
.field private final a:Lb0/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ly/m;


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lb0/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
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

    move-result-object p3

    check-cast p3, Lb0/b;

    iput-object p3, p0, Lh0/t$b;->a:Lb0/b;

    .line 3
    invoke-static {p2}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lh0/t$b;->b:Ljava/util/List;

    .line 4
    new-instance p2, Ly/m;

    invoke-direct {p2, p1}, Ly/m;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lh0/t$b;->c:Ly/m;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lh0/t$b;->b:Ljava/util/List;

    iget-object v1, p0, Lh0/t$b;->c:Ly/m;

    iget-object p0, p0, Lh0/t$b;->a:Lb0/b;

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/a;->b(Ljava/util/List;Ly/m;Lb0/b;)I

    move-result p0

    return p0
.end method

.method public b(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object p0, p0, Lh0/t$b;->c:Ly/m;

    .line 2
    invoke-virtual {p0}, Ly/m;->d()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    iget-object v0, p0, Lh0/t$b;->b:Ljava/util/List;

    iget-object v1, p0, Lh0/t$b;->c:Ly/m;

    iget-object p0, p0, Lh0/t$b;->a:Lb0/b;

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/load/a;->f(Ljava/util/List;Ly/m;Lb0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method
