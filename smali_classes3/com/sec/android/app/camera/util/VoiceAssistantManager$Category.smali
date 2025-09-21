.class public final enum Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;
.super Ljava/lang/Enum;
.source "VoiceAssistantManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/VoiceAssistantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

.field public static final enum DEFAULT:Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

.field public static final enum FACE_DETECTION:Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;->DEFAULT:Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    const-string v3, "FACE_DETECTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;->FACE_DETECTION:Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;->$VALUES:[Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;->$VALUES:[Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/util/VoiceAssistantManager$Category;

    return-object v0
.end method
