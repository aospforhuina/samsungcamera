.class public final synthetic Lcom/samsung/android/camera/core2/maker/a7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$5;

.field public final synthetic b:I

.field public final synthetic c:[J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$5;I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/a7;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$5;

    iput p2, p0, Lcom/samsung/android/camera/core2/maker/a7;->b:I

    iput-object p3, p0, Lcom/samsung/android/camera/core2/maker/a7;->c:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/a7;->a:Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$5;

    iget v1, p0, Lcom/samsung/android/camera/core2/maker/a7;->b:I

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/a7;->c:[J

    check-cast p1, Lcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$5;->b(Lcom/samsung/android/camera/core2/maker/AutoPhotoMaker$5;I[JLcom/samsung/android/camera/core2/callback/SceneDetectionEventCallback;)V

    return-void
.end method
