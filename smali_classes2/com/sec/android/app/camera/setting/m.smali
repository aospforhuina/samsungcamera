.class public final synthetic Lcom/sec/android/app/camera/setting/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/CameraPreferenceFragment$OriginalString;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/setting/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/setting/m;

    invoke-direct {v0}, Lcom/sec/android/app/camera/setting/m;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/setting/m;->a:Lcom/sec/android/app/camera/setting/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/setting/CameraPreferenceFragment;->n(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
