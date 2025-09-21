.class Lm5/c;
.super Lm5/q0;
.source "BeautyTypeSelectCommand.java"


# instance fields
.field private final a:Lcom/sec/android/app/camera/interfaces/CommandInterface;

.field private b:Lcom/sec/android/app/camera/interfaces/CommandId;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm5/q0;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/c;->a:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    .line 3
    iput-object p2, p0, Lm5/c;->b:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lm5/c;->a:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    iget-object p0, p0, Lm5/c;->b:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onBeautyTypeSelect(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method
