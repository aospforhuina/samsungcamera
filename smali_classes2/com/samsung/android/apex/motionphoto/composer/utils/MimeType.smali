.class public final enum Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;
.super Ljava/lang/Enum;
.source "GooglePhotosHelperV2.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

.field public static final enum HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

.field public static final enum JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

.field public static final enum MP4:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->MP4:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    const-string v3, "image/jpeg"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->JPEG:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    .line 2
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const-string v1, "HEIC"

    const/4 v2, 0x1

    const-string v3, "image/heic"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->HEIC:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    .line 3
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    const-string v1, "MP4"

    const/4 v2, 0x2

    const-string/jumbo v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->MP4:Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->$values()[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;
    .locals 2

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->$VALUES:[Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/utils/MimeType;->value:Ljava/lang/String;

    return-object p0
.end method
