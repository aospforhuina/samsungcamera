.class public Ln5/o;
.super Ljava/lang/Object;
.source "MultiPreviewItem.java"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field private b:Z

.field private c:Z

.field private d:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/o;->d:Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 3
    iput p2, p0, Ln5/o;->e:I

    .line 4
    iput-boolean p3, p0, Ln5/o;->c:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ln5/o;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public b()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Ln5/o;->d:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Ln5/o;->e:I

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Ln5/o;->b:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Ln5/o;->c:Z

    return p0
.end method

.method public f(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Ln5/o;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/o;->c:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/o;->b:Z

    return-void
.end method
