.class public final synthetic Lcom/samsung/android/apex/motionphoto/composer/utils/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper$XMPReserver;


# static fields
.field public static final synthetic a:Lcom/samsung/android/apex/motionphoto/composer/utils/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/c;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/utils/c;-><init>()V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/c;->a:Lcom/samsung/android/apex/motionphoto/composer/utils/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reserve(Ljava/lang/String;I)J
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/utils/GooglePhotosHelper;->e(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method
