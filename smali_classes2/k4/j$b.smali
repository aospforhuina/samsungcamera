.class Lk4/j$b;
.super Ljava/lang/Object;
.source "OCRResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk4/j$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:[Landroid/graphics/Point;

.field protected b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk4/j$b$a;

    invoke-direct {v0}, Lk4/j$b$a;-><init>()V

    sput-object v0, Lk4/j$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    .line 2
    iput-object v0, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk4/j$b;->b:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Point;

    .line 5
    iput-object v1, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lk4/j$b;->b:F

    const/16 v1, 0x8

    new-array v1, v1, [I

    const-string v2, "OCRResult"

    const-string v3, "readIntArray"

    .line 7
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 9
    iget-object v2, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v6, 0x1

    aget v7, v1, v6

    invoke-direct {v3, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v4

    .line 10
    iget-object v2, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x2

    aget v5, v1, v4

    const/4 v7, 0x3

    aget v8, v1, v7

    invoke-direct {v3, v5, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v6

    .line 11
    iget-object v2, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Point;

    aget v0, v1, v0

    const/4 v5, 0x5

    aget v5, v1, v5

    invoke-direct {v3, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v2, v4

    .line 12
    iget-object v0, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x6

    aget v3, v1, v3

    const/4 v4, 0x7

    aget v1, v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v7

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lk4/j$b;->b:F

    return-void
.end method


# virtual methods
.method public c()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    return-object p0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lk4/j$b;->b:F

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e([Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const-string p2, "OCRResult"

    const-string/jumbo v0, "writeIntArray"

    .line 1
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x8

    new-array p2, p2, [I

    .line 2
    iget-object v0, p0, Lk4/j$b;->a:[Landroid/graphics/Point;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    aput v2, p2, v1

    aget-object v1, v0, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aput v1, p2, v2

    aget-object v1, v0, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x2

    aput v1, p2, v3

    aget-object v1, v0, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x3

    aput v1, p2, v2

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v4, 0x4

    aput v1, p2, v4

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x5

    aput v1, p2, v3

    aget-object v1, v0, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x6

    aput v1, p2, v3

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x7

    aput v0, p2, v1

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    iget p0, p0, Lk4/j$b;->b:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
