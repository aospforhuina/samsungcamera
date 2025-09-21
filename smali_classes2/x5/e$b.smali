.class public Lx5/e$b;
.super Ljava/lang/Object;
.source "ResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lx5/e$b;->e:I

    .line 3
    iput p1, p0, Lx5/e$b;->b:I

    .line 4
    iput p2, p0, Lx5/e$b;->c:I

    .line 5
    iput p3, p0, Lx5/e$b;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;III)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3, p4}, Lx5/e$b;-><init>(III)V

    .line 7
    iput-object p1, p0, Lx5/e$b;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;IIII)V
    .locals 0

    .line 8
    invoke-direct {p0, p2, p3, p4}, Lx5/e$b;-><init>(III)V

    .line 9
    iput-object p1, p0, Lx5/e$b;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 10
    iput p5, p0, Lx5/e$b;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lx5/e$b;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lx5/e$b;->d:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lx5/e$b;->b:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lx5/e$b;->e:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lx5/e$b;->c:I

    return p0
.end method

.method public f(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    iput-object p1, p0, Lx5/e$b;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method
