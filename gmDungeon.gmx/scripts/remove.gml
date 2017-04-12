ini_open("inventory.dat");
b = argument0;
if (ini_key_exists(base64_encode("Player Inventory"), string(b) + " itemType"))
{
    if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " itemType", "")) == "ring")
    {
        if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " finger", "")) == "r")
        {
            with instance_position(600, 600, obj_ring)
            {
                instance_destroy();
            }
            ini_key_delete(base64_encode("Player Inventory"), string(b) + " finger")
        }
        else if (base64_decode(ini_read_string(base64_encode("Player Inventory"), string(b) + " finger", "")) == "l")
        {
            with instance_position(650, 650, obj_ring)
            {
                instance_destroy();    
            }
            ini_key_delete(base64_encode("Player Inventory"), string(b) + " finger")
        }
    }
}
