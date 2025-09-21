.class public final synthetic Lcom/sec/android/app/camera/engine/callback/j1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/j1;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/j1;->a:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/ZoomMapPreviewCallback;->b(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/interfaces/CallbackManager$ZoomMapViewListener;)V

    return-void
.end method
