.class final Lk4/j$e$a;
.super Ljava/lang/Object;
.source "OCRResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk4/j$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lk4/j$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lk4/j$e;
    .locals 0

    new-instance p0, Lk4/j$e;

    invoke-direct {p0, p1}, Lk4/j$e;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lk4/j$e;
    .locals 0

    new-array p0, p1, [Lk4/j$e;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lk4/j$e$a;->a(Landroid/os/Parcel;)Lk4/j$e;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lk4/j$e$a;->b(I)[Lk4/j$e;

    move-result-object p0

    return-object p0
.end method
