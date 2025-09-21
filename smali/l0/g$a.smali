.class Ll0/g$a;
.super Lr0/c;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr0/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/os/Handler;

.field final f:I

.field private final g:J

.field private k:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr0/c;-><init>()V

    .line 2
    iput-object p1, p0, Ll0/g$a;->d:Landroid/os/Handler;

    .line 3
    iput p2, p0, Ll0/g$a;->f:I

    .line 4
    iput-wide p3, p0, Ll0/g$a;->g:J

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;Ls0/b;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Ll0/g$a;->l(Landroid/graphics/Bitmap;Ls0/b;)V

    return-void
.end method

.method public j(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Ll0/g$a;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method k()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ll0/g$a;->k:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public l(Landroid/graphics/Bitmap;Ls0/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ls0/b<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ll0/g$a;->k:Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Ll0/g$a;->d:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ll0/g$a;->d:Landroid/os/Handler;

    iget-wide v0, p0, Ll0/g$a;->g:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
