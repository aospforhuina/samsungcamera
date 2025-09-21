.class public final synthetic Lcom/sec/android/app/camera/setting/c4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/c4;->a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/c4;->a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;->a(Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;Landroid/widget/ImageView;)V

    return-void
.end method
