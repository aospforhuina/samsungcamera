.class public Lk4/j$d;
.super Lk4/j$b;
.source "OCRResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk4/j$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk4/j$d$a;

    invoke-direct {v0}, Lk4/j$d$a;-><init>()V

    sput-object v0, Lk4/j$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk4/j$b;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lk4/j$d;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lk4/j$b;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lk4/j$d;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk4/j$d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic c()[Landroid/graphics/Point;
    .locals 0

    invoke-super {p0}, Lk4/j$b;->c()[Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic e([Landroid/graphics/Point;)V
    .locals 0

    invoke-super {p0, p1}, Lk4/j$b;->e([Landroid/graphics/Point;)V

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lk4/j$d;->c:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk4/j$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk4/j$d;->c:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "OCRResult"

    const-string/jumbo v1, "writeToParcel: CharData"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2}, Lk4/j$b;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    iget-object p0, p0, Lk4/j$d;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
