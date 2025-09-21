.class public final synthetic Lcom/samsung/android/camera/core2/maker/aa;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;

.field public final synthetic b:I

.field public final synthetic c:[J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/aa;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;

    iput p2, p0, Lcom/samsung/android/camera/core2/maker/aa;->b:I

    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/aa;->c:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/aa;->a:Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;

    iget v1, p0, Lcom/samsung/android/camera/core2/maker/aa;->b:I

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/aa;->c:[J

    check-cast p1, Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;->b(Lcom/samsung/android/camera/core2/maker/BeautyPhotoMaker$8;I[JLcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;)V

    return-void
.end method
