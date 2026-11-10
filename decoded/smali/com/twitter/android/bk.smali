.class public final Lcom/twitter/android/bk;
.super Lcom/twitter/android/e;


# instance fields
.field d:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/twitter/android/e;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/bk;->d:Landroid/location/Location;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/bk;->c:Ljava/lang/String;

    return-void
.end method
