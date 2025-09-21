.class public final synthetic Lcom/sec/android/app/camera/engine/callback/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;

.field public final synthetic b:[Landroid/hardware/camera2/params/Face;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;[Landroid/hardware/camera2/params/Face;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/g1;->a:Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/g1;->b:[Landroid/hardware/camera2/params/Face;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/g1;->a:Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/g1;->b:[Landroid/hardware/camera2/params/Face;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->b(Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;[Landroid/hardware/camera2/params/Face;Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    return-void
.end method
