.class public final synthetic Lcom/sec/android/app/camera/receiver/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/receiver/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/receiver/a;

    invoke-direct {v0}, Lcom/sec/android/app/camera/receiver/a;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/receiver/a;->a:Lcom/sec/android/app/camera/receiver/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/receiver/SmartSwitchReceiver$CameraBackupRestoreTask;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
