.class public final synthetic Lcom/samsung/android/camera/core2/maker/t5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$12;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$12;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/t5;->a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$12;

    iput p2, p0, Lcom/samsung/android/camera/core2/maker/t5;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/t5;->a:Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$12;

    iget p0, p0, Lcom/samsung/android/camera/core2/maker/t5;->b:I

    check-cast p1, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$12;->f(Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker$12;ILcom/samsung/android/camera/core2/callback/AgifEventCallback;)V

    return-void
.end method
