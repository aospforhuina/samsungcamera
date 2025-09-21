.class public Lz3/d;
.super Ljava/lang/Object;
.source "InputFrameData.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:[B

.field private i:[B

.field private j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[BIIIIJ",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iput-object p10, p0, Lz3/d;->a:Ljava/util/List;

    .line 4
    iput p4, p0, Lz3/d;->c:I

    .line 5
    iput p5, p0, Lz3/d;->d:I

    .line 6
    iput p6, p0, Lz3/d;->e:I

    .line 7
    iput p7, p0, Lz3/d;->f:I

    .line 8
    iput-wide p8, p0, Lz3/d;->g:J

    .line 9
    iput-object p2, p0, Lz3/d;->h:[B

    .line 10
    iput-object p3, p0, Lz3/d;->i:[B

    .line 11
    iput-object p1, p0, Lz3/d;->b:Ljava/lang/String;

    .line 12
    iput p11, p0, Lz3/d;->j:I

    return-void
.end method

.method public constructor <init>([BIIJI)V
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move/from16 v11, p6

    .line 13
    invoke-direct/range {v0 .. v11}, Lz3/d;-><init>(Ljava/lang/String;[B[BIIIIJLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lz3/d;->j:I

    return p0
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lz3/d;->a:Ljava/util/List;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz3/d;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lz3/d;->h:[B

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lz3/d;->f:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lz3/d;->e:I

    return p0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lz3/d;->g:J

    return-wide v0
.end method
