int kmain(void) {
    // Directly write to video memory (VGA text mode)
    char* video = (char*)0xB8000;
    const char* msg = "TTS-UNIX BOOT SUCCESSFUL!";
    for (int i = 0; msg[i] != '\0'; i++) {
        video[i * 2] = msg[i];         // Character
        video[i * 2 + 1] = 0x0F;       // Color (white on black)
    }
    for (;;); // Freeze CPU
    return 0;
}
