.class public Ln5/b;
.super Ljava/lang/Object;
.source "BokehEffectItem.java"


# instance fields
.field private final a:Lx5/e$b;

.field private final b:Lcom/sec/android/app/camera/interfaces/CommandId;


# direct methods
.method public constructor <init>(Lx5/e$b;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/b;->a:Lx5/e$b;

    .line 3
    iput-object p2, p0, Ln5/b;->b:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method


# virtual methods
.method public a()Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Ln5/b;->b:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method public b()Lx5/e$b;
    .locals 0

    iget-object p0, p0, Ln5/b;->a:Lx5/e$b;

    return-object p0
.end method
