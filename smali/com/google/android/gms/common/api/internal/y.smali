.class final Lcom/google/android/gms/common/api/internal/y;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final a:I

.field private final b:Ly0/a;


# direct methods
.method constructor <init>(Ly0/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/y;->b:Ly0/a;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/y;->a:I

    return-void
.end method


# virtual methods
.method final a()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/internal/y;->a:I

    return p0
.end method

.method final b()Ly0/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/y;->b:Ly0/a;

    return-object p0
.end method
