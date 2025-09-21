.class public final synthetic Lcom/sec/android/app/camera/preview/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/preview/PreviewManagerImpl;

.field public final synthetic b:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/d;->a:Lcom/sec/android/app/camera/preview/PreviewManagerImpl;

    iput-object p2, p0, Lcom/sec/android/app/camera/preview/d;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/d;->a:Lcom/sec/android/app/camera/preview/PreviewManagerImpl;

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/d;->b:Landroid/graphics/Rect;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->b(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
