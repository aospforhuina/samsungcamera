.class public final enum Lk4/n;
.super Ljava/lang/Enum;
.source "OCRType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk4/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lk4/n;

.field public static final enum c:Lk4/n;

.field public static final enum d:Lk4/n;

.field private static final synthetic f:[Lk4/n;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lk4/n;

    const-string v1, "OCR_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk4/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk4/n;->b:Lk4/n;

    .line 2
    new-instance v1, Lk4/n;

    const-string v3, "OCR_PRINTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lk4/n;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk4/n;->c:Lk4/n;

    .line 3
    new-instance v3, Lk4/n;

    const-string v5, "OCR_HANDWRITTEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lk4/n;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lk4/n;->d:Lk4/n;

    const/4 v5, 0x3

    new-array v5, v5, [Lk4/n;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lk4/n;->f:[Lk4/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lk4/n;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk4/n;
    .locals 1

    const-class v0, Lk4/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk4/n;

    return-object p0
.end method

.method public static values()[Lk4/n;
    .locals 1

    sget-object v0, Lk4/n;->f:[Lk4/n;

    invoke-virtual {v0}, [Lk4/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk4/n;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lk4/n;->a:I

    return p0
.end method
