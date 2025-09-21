.class public final synthetic Lcom/sec/android/app/camera/engine/callback/q0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/q0;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/q0;->b:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/q0;->a:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/q0;->b:Landroid/util/Size;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/callback/PreviewSnapShotCallback;->b(Landroid/graphics/Bitmap;Landroid/util/Size;Lcom/sec/android/app/camera/interfaces/CallbackManager$PreviewSnapShotListener;)V

    return-void
.end method
