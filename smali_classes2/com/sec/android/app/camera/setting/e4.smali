.class public final synthetic Lcom/sec/android/app/camera/setting/e4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/e4;->a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/e4;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/e4;->a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/e4;->b:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;->n(Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;Landroid/view/View;Landroid/widget/ImageView;)V

    return-void
.end method
