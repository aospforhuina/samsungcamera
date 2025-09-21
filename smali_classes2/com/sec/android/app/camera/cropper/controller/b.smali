.class public final synthetic Lcom/sec/android/app/camera/cropper/controller/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ll3/a;


# direct methods
.method public synthetic constructor <init>(Ll3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/b;->a:Ll3/a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/b;->a:Ll3/a;

    check-cast p1, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/VisionTextTask;->a(Ll3/a;Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;)V

    return-void
.end method
