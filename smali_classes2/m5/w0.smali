.class Lm5/w0;
.super Lm5/q0;
.source "SwitchCameraCommand.java"


# instance fields
.field private final a:Lcom/sec/android/app/camera/interfaces/CommandInterface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm5/q0;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/w0;->a:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object p0, p0, Lm5/w0;->a:Lcom/sec/android/app/camera/interfaces/CommandInterface;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSwitchCameraSelect(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method
