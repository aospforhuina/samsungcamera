.class public Lz3/c;
.super Ljava/lang/Object;
.source "FrameData.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:J

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lz3/c;->j:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 0

    iget-object p0, p0, Lz3/c;->f:[B

    return-object p0
.end method

.method public b()[B
    .locals 0

    iget-object p0, p0, Lz3/c;->g:[B

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lz3/c;->j:I

    return p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lz3/c;->i:Ljava/util/List;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lz3/c;->b:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lz3/c;->c:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lz3/c;->d:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lz3/c;->a:I

    return p0
.end method

.method public i([B)V
    .locals 0

    iput-object p1, p0, Lz3/c;->f:[B

    return-void
.end method

.method public j([B)V
    .locals 0

    iput-object p1, p0, Lz3/c;->g:[B

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lz3/c;->j:I

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz3/c;->i:Ljava/util/List;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz3/c;->e:Ljava/lang/String;

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lz3/c;->b:I

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lz3/c;->c:I

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lz3/c;->d:I

    return-void
.end method

.method public q(J)V
    .locals 0

    iput-wide p1, p0, Lz3/c;->h:J

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lz3/c;->a:I

    return-void
.end method
