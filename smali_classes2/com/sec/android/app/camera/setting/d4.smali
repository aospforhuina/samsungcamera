.class public final synthetic Lcom/sec/android/app/camera/setting/d4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/d4;->a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

    iput p2, p0, Lcom/sec/android/app/camera/setting/d4;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/d4;->a:Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;

    iget p0, p0, Lcom/sec/android/app/camera/setting/d4;->b:I

    check-cast p1, Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;->h(Lcom/sec/android/app/camera/setting/WatermarkAlignmentPreference;ILandroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
