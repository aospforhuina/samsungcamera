.class public Ln5/a;
.super Ljava/lang/Object;
.source "BeautyListItem.java"


# instance fields
.field private final a:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private final b:Lx5/e$b;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/a;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 3
    invoke-static {p1}, Lx5/e;->b(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/e$b;

    move-result-object p1

    iput-object p1, p0, Ln5/a;->b:Lx5/e$b;

    .line 4
    iput-boolean p2, p0, Ln5/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Ln5/a;->a:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Ln5/a;->b:Lx5/e$b;

    invoke-virtual {p0}, Lx5/e$b;->c()I

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Ln5/a;->c:Z

    return p0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Ln5/a;->c:Z

    return-void
.end method
