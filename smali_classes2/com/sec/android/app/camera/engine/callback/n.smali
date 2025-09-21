.class public final synthetic Lcom/sec/android/app/camera/engine/callback/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/callback/FaceDetectionCallback;

.field public final synthetic b:Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/callback/FaceDetectionCallback;Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/n;->a:Lcom/sec/android/app/camera/engine/callback/FaceDetectionCallback;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/n;->b:Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/n;->a:Lcom/sec/android/app/camera/engine/callback/FaceDetectionCallback;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/n;->b:Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/callback/FaceDetectionCallback;->b(Lcom/sec/android/app/camera/engine/callback/FaceDetectionCallback;Lcom/samsung/android/camera/core2/callback/FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/sec/android/app/camera/interfaces/CallbackManager$FaceDetectionListener;)V

    return-void
.end method
